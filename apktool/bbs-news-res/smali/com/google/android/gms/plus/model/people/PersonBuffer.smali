.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final any:Lcom/google/android/gms/common/data/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/e",
            "<",
            "Lcom/google/android/gms/internal/ny;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3
    .parameter "dataHolder"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->gz()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->gz()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/data/e;

    sget-object v1, Lcom/google/android/gms/internal/ny;->CREATOR:Lcom/google/android/gms/internal/nz;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->any:Lcom/google/android/gms/common/data/e;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->any:Lcom/google/android/gms/common/data/e;

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/people/Person;
    .locals 2
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->any:Lcom/google/android/gms/common/data/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->any:Lcom/google/android/gms/common/data/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/e;->aq(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/oj;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->IC:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/oj;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
