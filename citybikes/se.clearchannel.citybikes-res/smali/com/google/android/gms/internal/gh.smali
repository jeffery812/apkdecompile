.class public Lcom/google/android/gms/internal/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/gi;


# instance fields
.field private final kg:I

.field private final xK:Z

.field private final xL:Z

.field private final xM:Z

.field private final xN:Z

.field private final xO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    return-void
.end method

.method public constructor <init>(IZZZZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gh;->kg:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/gh;->xL:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/gh;->xN:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/gh;

    iget v1, p0, Lcom/google/android/gms/internal/gh;->kg:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/gh;->xL:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/gh;->xN:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gh;-><init>(IZZZZLjava/util/ArrayList;)V

    return-object v0

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public dD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xL:Z

    return v0
.end method

.method public dE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    return v0
.end method

.method public dF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xN:Z

    return v0
.end method

.method public dG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/gh;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gh;->xK:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gh;->xL:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gh;->xL:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gh;->xN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gh;->xN:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gh;->xM:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/gh;->kg:I

    iget v3, p1, Lcom/google/android/gms/internal/gh;->kg:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gh;->kg:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xL:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xN:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    if-eqz v3, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/gh;->kg:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopresenceSettings [mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/gh;->kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gh;->xK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAcl={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->xO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifiedForNonAcl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gh;->xM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/gh;->CREATOR:Lcom/google/android/gms/internal/gi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gh;Landroid/os/Parcel;I)V

    return-void
.end method
