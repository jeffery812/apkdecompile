.class public final Lcom/google/android/gms/internal/el;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/em;


# instance fields
.field private final kg:I

.field private final nN:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final os:I

.field private final pX:I

.field private final pY:Ljava/lang/String;

.field private final pZ:Ljava/lang/String;

.field private final qa:Ljava/lang/String;

.field private final qb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/em;

    invoke-direct {v0}, Lcom/google/android/gms/internal/em;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/el;->CREATOR:Lcom/google/android/gms/internal/em;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/el;->kg:I

    iput p2, p0, Lcom/google/android/gms/internal/el;->os:I

    iput p3, p0, Lcom/google/android/gms/internal/el;->pX:I

    iput-object p4, p0, Lcom/google/android/gms/internal/el;->pY:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/el;->pZ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/el;->qa:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/el;->qb:Ljava/lang/String;

    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/el;->nN:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public bY()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->pX:I

    return v0
.end method

.method public bZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Ljava/lang/String;

    return-object v0
.end method

.method public ca()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pZ:Ljava/lang/String;

    return-object v0
.end method

.method public cb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->qb:Ljava/lang/String;

    return-object v0
.end method

.method public cc()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/el;->os:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->pX:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/el;->os:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/el;

    if-nez v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/el;

    .end local p1
    iget v1, p0, Lcom/google/android/gms/internal/el;->kg:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->kg:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->os:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->os:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->pX:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->pX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->pY:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/el;->pY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->pZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/el;->pZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->qa:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->nN:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->os:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->kg:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/el;->kg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/el;->os:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/el;->pX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->pY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->pZ:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->cd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->ca()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->cc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->bZ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->bZ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/em;->a(Lcom/google/android/gms/internal/el;Landroid/os/Parcel;I)V

    return-void
.end method
