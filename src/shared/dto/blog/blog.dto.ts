import { IsDefined, IsString, IsOptional, MinLength, MaxLength } from "class-validator";

export class Blog_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(1)
    @MaxLength(50)
    titre : string

    @IsOptional()
    @IsString()
    @MinLength(0)
    @MaxLength(100)
    img : string

    @IsDefined()
    @IsString()
    @MinLength(5)
    @MaxLength(500)
    desc : string
}