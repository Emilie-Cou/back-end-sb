import { Column, Entity, JoinColumn, OneToOne, PrimaryColumn } from "typeorm";
import { LifeTime } from "../lifeTime.entity";
// import { ProfEntity } from "../prof/prof.entity";

@Entity("classe")
export class ClasseEntity extends LifeTime
{
    @PrimaryColumn({ type : "nvarchar", length : "4", nullable : false, unique : true})
    idClasse : string

    // @OneToOne(() => ProfEntity, { cascade : ["insert", "update"] })
    @Column()
    idProf : string

    @Column({ type : "nvarchar", length : "20", nullable : false})
    nomClasse : string

    @Column({ type : "nvarchar", length : "200", nullable : false})
    miniDesc : string

    @Column({ type : "nvarchar", length : "500", nullable : false})
    desc : string

    @Column({ type : "nvarchar", length : "100", nullable : true})
    img : string
}



//! une photo a un seul user
//! entity photo
    //? @ManyToOne(() => User, (user) => user.photos)
    //? user: User
//! photo = student
//- photo = prof

//! un user a plusieurs photos
//! entity user
    //? @OneToMany(() => Photo, (photo) => photo.user)
    //? photos: Photo[]
//! user = classe
//- user = classe
//* ManyToOne peut etre sans onetomany mais pas l'inverse


/* 1 prof a 1 classe
1 classe peut avoir 2 profs */