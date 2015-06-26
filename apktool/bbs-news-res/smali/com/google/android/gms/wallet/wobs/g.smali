.class public final Lcom/google/android/gms/wallet/wobs/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field aus:I

.field aut:Ljava/lang/String;

.field auu:D

.field auv:Ljava/lang/String;

.field auw:J

.field aux:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/h;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/g;->BR:I

    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->aux:I

    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->aus:I

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/android/gms/wallet/wobs/g;->auu:D

    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/g;->BR:I

    iput p2, p0, Lcom/google/android/gms/wallet/wobs/g;->aus:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/g;->aut:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/wallet/wobs/g;->auu:D

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/g;->auv:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/wallet/wobs/g;->auw:J

    iput p9, p0, Lcom/google/android/gms/wallet/wobs/g;->aux:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/g;->BR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/h;->a(Lcom/google/android/gms/wallet/wobs/g;Landroid/os/Parcel;I)V

    return-void
.end method
