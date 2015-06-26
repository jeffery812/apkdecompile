.class public final Lcom/google/android/gms/wallet/ProxyCard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/ProxyCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field atu:Ljava/lang/String;

.field atv:Ljava/lang/String;

.field atw:I

.field atx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/o;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "versionCode"
    .parameter "pan"
    .parameter "cvn"
    .parameter "expirationMonth"
    .parameter "expirationYear"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/ProxyCard;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/ProxyCard;->atu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/ProxyCard;->atv:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wallet/ProxyCard;->atw:I

    iput p5, p0, Lcom/google/android/gms/wallet/ProxyCard;->atx:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCvn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->atv:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->atw:I

    return v0
.end method

.method public getExpirationYear()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->atx:I

    return v0
.end method

.method public getPan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->atu:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->BR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/o;->a(Lcom/google/android/gms/wallet/ProxyCard;Landroid/os/Parcel;I)V

    return-void
.end method
