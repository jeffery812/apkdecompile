.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field public final Vs:Z

.field public final Vt:Z

.field public final Vu:I

.field public final Vv:Z

.field public final Vw:I

.field public final Vx:Ljava/lang/String;

.field public final Vy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vs:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vt:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vu:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vv:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vx:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vy:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vs:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vt:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vu:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vu:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vv:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vw:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vw:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vx:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Vy:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Vy:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method
