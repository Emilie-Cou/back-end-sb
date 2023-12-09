//! une photo a un seul user
//! entity photo
    //? @ManyToOne(() => User, (user) => user.photos)
    //? user: User
//* Many va vers id
    //? @ManyToOne(() => TypeRegimeEntity, (typeRegime) => typeRegime.id, { cascade : ["insert", "update"] })
    //? type : TypeRegimeEntity
//! photo = student
//- photo = prof

//! un user a plusieurs photos
//! entity user
    //? @OneToMany(() => Photo, (photo) => photo.user)
    //? photos: Photo[]
//* One va vers many
    //? @OneToMany(() => CommandEntity, (command) => command.type, { cascade : ["insert", "update"] })
    //? commands : CommandEntity
//! user = classe
//- user = classe
//* ManyToOne peut etre sans onetomany mais pas l'inverse


/* 1 prof a 1 classe
1 classe peut avoir 2 profs */