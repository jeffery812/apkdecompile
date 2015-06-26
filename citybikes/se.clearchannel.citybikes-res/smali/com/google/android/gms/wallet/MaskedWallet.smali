.class public final Lcom/google/android/gms/wallet/MaskedWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field GI:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field GJ:[Lcom/google/android/gms/wallet/OfferWalletObject;

.field Gn:Ljava/lang/String;

.field Go:Ljava/lang/String;

.field Gq:Ljava/lang/String;

.field Gr:Lcom/google/android/gms/wallet/Address;

.field Gs:Lcom/google/android/gms/wallet/Address;

.field Gt:[Ljava/lang/String;

.field private final kg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/h;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->kg:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .locals 0
    .parameter "versionCode"
    .parameter "googleTransactionId"
    .parameter "merchantTransactionId"
    .parameter "paymentDescriptions"
    .parameter "email"
    .parameter "billingAddress"
    .parameter "shippingAddress"
    .parameter "loyaltyWalletObjects"
    .parameter "offerWalletObjects"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWallet;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Go:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gt:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gq:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gr:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gs:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWallet;->GI:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWallet;->GJ:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gr:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gq:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gn:Ljava/lang/String;

    return-object v0
.end method

.method public getLoyaltyWalletObjects()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->GI:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Go:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferWalletObjects()[Lcom/google/android/gms/wallet/OfferWalletObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->GJ:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gt:[Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->Gs:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->kg:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/h;->a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V

    return-void
.end method
