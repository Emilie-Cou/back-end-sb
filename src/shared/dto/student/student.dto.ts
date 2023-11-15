import { IsDefined, IsString, IsEmail, MaxLength, MinLength, IsOptional, Length } from "class-validator";

export class Student_DTO
{
    @IsString()
    @IsOptional()
    @Length(7)
    idStudent : string

    @IsString()
    @IsOptional()
    @Length(9)
    psw1 : string

    @IsString()
    @IsOptional()
    @Length(9)
    psw2 : string 

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(30)
    nom : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(30)
    prenom : string

    @IsDefined()
    @IsEmail()
    @MinLength(5)
    @MaxLength(75)
    email1 : string

    @IsDefined()
    @IsEmail()
    @MinLength(5)
    @MaxLength(75)
    email2 : string

    @IsDefined()
    @IsString()
    parentsSepares : string
}
