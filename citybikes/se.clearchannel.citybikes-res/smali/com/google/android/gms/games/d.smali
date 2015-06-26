.class public final Lcom/google/android/gms/games/d;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/d$a;
    }
.end annotation


# instance fields
.field private final tG:Lcom/google/android/gms/games/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/d$a;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/d$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    return-void
.end method


# virtual methods
.method public db()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "dataOut"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tI:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/d;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tJ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->L(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->tG:Lcom/google/android/gms/games/d$a;

    iget-object v0, v0, Lcom/google/android/gms/games/d$a;->tL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
