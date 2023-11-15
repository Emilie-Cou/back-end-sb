import { Injectable, UnauthorizedException } from '@nestjs/common';
import { StudentService } from '../_student/_student.service';
import { ProfService } from '../_prof/_prof.service';

@Injectable()
export class ConnectService
{
constructor(
    private readonly stuService : StudentService, 
    private readonly profService : ProfService
    ) {}

    async connect(idUser : string, pswUser : string)
    {
        try {
            if (idUser.length == 6 && pswUser.length == 8) {
                // Je suis prof, je vérifie si mdp=mdp et user=user
                const userProf = await this.profService.getOne(idUser)
                if (userProf.psw === pswUser) {
                    return idUser
                } else {
                    return new UnauthorizedException()
                }
            }

            else if (idUser.length == 7 && pswUser.length == 9) {
                // Je suis student, je vérifie si mdp=mdp et user=user
                const userStu = await this.stuService.getOne(idUser)
                if ((userStu.psw1 === pswUser) || (userStu.psw2 === pswUser)) {
                    return idUser
                } else {
                    return new UnauthorizedException()
                }
            }
            
            else {
                // J'ai un problème
                console.log('Il y a une erreur dans l\'encodage des données.');
            }
        } catch (error) {
            console.log(error);
            return error
        }    
    }
}
