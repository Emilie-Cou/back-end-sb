import { BeforeInsert, Column, Entity, ManyToOne, PrimaryColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { ClasseEntity } from "../classe/classe.entity";
import { randomInt } from "crypto";

@Entity("prof")
export class ProfEntity extends LifeTime
{    
    @PrimaryColumn({ type : "nvarchar", length : "6", nullable : false, unique : true})
    idProf : string

    @ManyToOne(() => ClasseEntity, (classe) => classe.idClasse, { cascade : ["insert", "update", "soft-remove"] })
    classe : ClasseEntity

    @Column({ type : "nvarchar", length : "8", nullable : false, unique : true})
    psw : string

    @Column({ type : "nvarchar", length : "30", nullable : false})
    nom : string

    @Column({ type : "nvarchar", length : "75", nullable : false})
    email : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    img : string



    @BeforeInsert()
    createId(){
        const initial = this.nom.substring(0, 2)
        const randNum4 = randomInt(1000, 9999)
        this.idProf = (initial + randNum4.toString()).toUpperCase()
        console.log(this.idProf);
    }

    @BeforeInsert()
    createPsw(){
        const randNum5 = randomInt(10000, 99999)
        this.psw = (this.classe + randNum5.toString()).toUpperCase()
        console.log(this.psw);
    }
}
