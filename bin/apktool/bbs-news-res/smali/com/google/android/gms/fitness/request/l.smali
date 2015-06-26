.class public Lcom/google/android/gms/fitness/request/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/l$1;,
        Lcom/google/android/gms/fitness/request/l$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final SF:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/l;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/l;->SF:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/l$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/l;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/l$a;->a(Lcom/google/android/gms/fitness/request/l$a;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/l;->SF:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/l$a;Lcom/google/android/gms/fitness/request/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/l;-><init>(Lcom/google/android/gms/fitness/request/l$a;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/l;->SF:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/l;->BR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/m;->a(Lcom/google/android/gms/fitness/request/l;Landroid/os/Parcel;I)V

    return-void
.end method
