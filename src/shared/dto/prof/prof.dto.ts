import { IsDefined, IsString, IsEmail, IsOptional, MaxLength, MinLength, Length } from "class-validator";

export class Prof_DTO
{
    @IsString()
    @IsOptional()
    @Length(8)
    psw : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(30)
    nom : string

    @IsDefined()
    @IsEmail()
    @MinLength(5)
    @MaxLength(75)
    email : string

    @IsOptional()
    @IsString()
    @MaxLength(100)
    img : string
}
