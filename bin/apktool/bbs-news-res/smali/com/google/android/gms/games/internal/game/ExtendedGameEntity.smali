.class public final Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;


# instance fields
.field private final BR:I

.field private final aan:Lcom/google/android/gms/games/GameEntity;

.field private final aao:I

.field private final aap:Z

.field private final aaq:I

.field private final aar:J

.field private final aas:J

.field private final aat:Ljava/lang/String;

.field private final aau:J

.field private final aav:Ljava/lang/String;

.field private final aaw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadgeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final aax:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity$ExtendedGameEntityCreatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;)V
    .locals 0
    .parameter "versionCode"
    .parameter "game"
    .parameter "availability"
    .parameter "owned"
    .parameter "achievementUnlockedCount"
    .parameter "lastPlayedServerTimestamp"
    .parameter "priceMicros"
    .parameter "formattedPrice"
    .parameter "fullPriceMicros"
    .parameter "formattedFullPrice"
    .parameter
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/games/GameEntity;",
            "IZIJJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadgeEntity;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p14, badges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gms/games/internal/game/GameBadgeEntity;>;"
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aan:Lcom/google/android/gms/games/GameEntity;

    iput p3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aao:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aap:Z

    iput p5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaq:I

    iput-wide p6, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aar:J

    iput-wide p8, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aas:J

    iput-object p10, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aat:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aau:J

    iput-object p13, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aav:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    iput-object p15, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aax:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V
    .locals 5
    .parameter "extendedGame"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->BR:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aan:Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kP()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aao:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kQ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aap:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kR()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaq:I

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kS()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aar:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kT()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aas:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aat:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kV()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aau:J

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aav:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kX()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aax:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kO()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadge;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/game/GameBadge;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    invoke-direct {v0, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kP()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kQ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kR()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kT()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kU()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kV()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kW()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kP()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kP()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kQ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kQ()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kR()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kR()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kS()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kT()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kT()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kU()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kU()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kV()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kV()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kW()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/m;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "Game"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "Availability"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kP()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "Owned"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kQ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "AchievementUnlockedCount"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kR()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "LastPlayedServerTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "PriceMicros"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kT()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "FormattedPrice"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "FullPriceMicros"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kV()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "FormattedFullPrice"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "Snapshot"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->kX()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic bt(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aV(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic jQ()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gP()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->kZ()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->kY()Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kO()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadge;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public kP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aao:I

    return v0
.end method

.method public kQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aap:Z

    return v0
.end method

.method public kR()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaq:I

    return v0
.end method

.method public kS()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aar:J

    return-wide v0
.end method

.method public kT()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aas:J

    return-wide v0
.end method

.method public kU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aat:Ljava/lang/String;

    return-object v0
.end method

.method public kV()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aau:J

    return-wide v0
.end method

.method public kW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aav:Ljava/lang/String;

    return-object v0
.end method

.method public kX()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aax:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    return-object v0
.end method

.method public kY()Lcom/google/android/gms/games/GameEntity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aan:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public kZ()Lcom/google/android/gms/games/internal/game/ExtendedGame;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gQ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aan:Lcom/google/android/gms/games/GameEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aao:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aap:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aar:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aas:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aau:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aav:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
