.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/StartBleScanRequest$1;,
        Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/StartBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final Su:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final UF:Lcom/google/android/gms/fitness/request/k;

.field private final UG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/ab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Landroid/os/IBinder;I)V
    .locals 1
    .parameter "versionCode"
    .parameter
    .parameter "bleScanCallback"
    .parameter "timeoutSecs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Landroid/os/IBinder;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, dataTypes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/fitness/data/DataType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Su:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/gms/fitness/request/k$a;->ay(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UF:Lcom/google/android/gms/fitness/request/k;

    iput p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UG:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)[Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jr;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Su:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->b(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)Lcom/google/android/gms/fitness/request/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UF:Lcom/google/android/gms/fitness/request/k;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->c(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UG:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;Lcom/google/android/gms/fitness/request/StartBleScanRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Su:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->BR:I

    return v0
.end method

.method public jA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UG:I

    return v0
.end method

.method public jz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UF:Lcom/google/android/gms/fitness/request/k;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/k;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->Su:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    const-string v1, "timeoutSecs"

    iget v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->UG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/ab;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method
