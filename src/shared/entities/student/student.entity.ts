import { BeforeInsert, Column, Entity, ManyToOne, PrimaryColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { ClasseEntity } from "../classe/classe.entity";
import { randomInt } from "crypto";

@Entity("student")
export class StudentEntity extends LifeTime
{
    @PrimaryColumn({ type : "nvarchar", length : "7", nullable : false, unique : true})
    idStudent : string

    @ManyToOne(() => ClasseEntity, (classe) => classe.idClasse, { cascade : ["insert", "update", "soft-remove"] })
    classe : ClasseEntity

    @Column({ type : "nvarchar", length : "9", nullable : false, unique : true})
    psw1 : string

    @Column({ type : "nvarchar", length : "9", nullable : false, unique : true})
    psw2 : string

    @Column({ type : "nvarchar", length : "30", nullable : false})
    nom : string

    @Column({ type : "nvarchar", length : "30", nullable : false})
    prenom : string

    @Column({ type : "nvarchar", length : "100", nullable : false})
    email1 : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    email2 : string

    @Column({ type : "nvarchar", length : "5", nullable : false})
    parentsSepares : string



    @BeforeInsert()
    createId(){
        const iniNom = this.nom.charAt(0)
        const iniPrenom = this.prenom.charAt(0)
        const randNum5 = randomInt(10000, 99999)
        this.idStudent = (iniNom + iniPrenom + randNum5.toString()).toUpperCase()
    }

    @BeforeInsert()
    createPsws(){
        const iniNom = this.nom.charAt(0)
        const iniPrenom = this.prenom.charAt(0)
        const randNum41 = randomInt(10000, 99999)
        const randNum42 = randomInt(10000, 99999)
        this.psw1 = (iniNom + iniPrenom + randNum41.toString()).toUpperCase()
        this.psw2 = (iniNom + iniPrenom + randNum42.toString()).toUpperCase()
    }
}
