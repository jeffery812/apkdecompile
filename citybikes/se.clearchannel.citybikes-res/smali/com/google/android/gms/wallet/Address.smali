.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Ga:Ljava/lang/String;

.field Gb:Ljava/lang/String;

.field Gc:Ljava/lang/String;

.field Gd:Ljava/lang/String;

.field Ge:Ljava/lang/String;

.field Gf:Ljava/lang/String;

.field Gg:Ljava/lang/String;

.field Gh:Z

.field Gi:Ljava/lang/String;

.field id:Ljava/lang/String;

.field private final kg:I

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->kg:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "versionCode"
    .parameter "name"
    .parameter "address1"
    .parameter "address2"
    .parameter "address3"
    .parameter "countryCode"
    .parameter "city"
    .parameter "state"
    .parameter "postalCode"
    .parameter "phoneNumber"
    .parameter "isPostBox"
    .parameter "companyName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->Ga:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->Gb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->Gc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->id:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->Gd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->Ge:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->Gf:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->Gg:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->Gh:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->Gi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Ga:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gb:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gc:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gd:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gi:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Gf:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Ge:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->kg:I

    return v0
.end method

.method public isPostBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/Address;->Gh:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
