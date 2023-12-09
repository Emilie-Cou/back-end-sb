import { Column, Entity, OneToOne, PrimaryColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
import { ProfEntity } from "../prof/prof.entity";

@Entity("classe")
export class ClasseEntity extends LifeTime
{
    @PrimaryColumn({ type : "nvarchar", length : "4", nullable : false, unique : true})
    idClasse : string

    @OneToOne(() => ProfEntity, (prof) => prof.classe, { cascade: ["insert", "update", "soft-remove"] })
    prof: ProfEntity

    @Column({ type : "nvarchar", length : "20", nullable : false})
    nomClasse : string

    @Column({ type : "nvarchar", length : "200", nullable : false})
    miniDesc : string

    @Column({ type : "nvarchar", length : "500", nullable : false})
    desc : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    img : string
}
