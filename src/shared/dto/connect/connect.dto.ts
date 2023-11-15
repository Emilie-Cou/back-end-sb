import { IsDefined, IsString, MaxLength, MinLength } from "class-validator";


export class Connect_DTO
{
    @IsDefined()
    @IsString()
    @MinLength(6)
    @MaxLength(7)
    idConnect : string

    @IsDefined()
    @IsString()
    @MinLength(8)
    @MaxLength(9)
    pswConnect : string
}