import { IsDefined, IsString, Min, Max, MaxLength, MinLength } from "class-validator";

export class MsgParent_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(25)
    prenom : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(250)
    content : string
}
