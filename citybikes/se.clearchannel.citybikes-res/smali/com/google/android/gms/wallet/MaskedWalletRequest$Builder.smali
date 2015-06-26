.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/MaskedWalletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method public setAllowDebitCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "allowDebitCard"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GT:Z

    return-object p0
.end method

.method public setAllowPrepaidCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "allowPrepaidCard"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GS:Z

    return-object p0
.end method

.method public setAllowedShippingCountrySpecifications([Lcom/google/android/gms/wallet/CountrySpecification;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "allowedShippingCountrySpecifications"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GR:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object p0
.end method

.method public setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "cart"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Gu:Lcom/google/android/gms/wallet/Cart;

    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "currencyCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Gk:Ljava/lang/String;

    return-object p0
.end method

.method public setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "estimatedTotalPrice"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GN:Ljava/lang/String;

    return-object p0
.end method

.method public setIsBillingAgreement(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "isBillingAgreement"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GQ:Z

    return-object p0
.end method

.method public setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "merchantName"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GO:Ljava/lang/String;

    return-object p0
.end method

.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "merchantTransactionId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Go:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "phoneNumberRequired"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GK:Z

    return-object p0
.end method

.method public setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "shippingAddressRequired"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GL:Z

    return-object p0
.end method

.method public setShouldRetrieveWalletObjects(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "shouldRetrieveWalletObjects"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GP:Z

    return-object p0
.end method

.method public setUseMinimalBillingAddress(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 1
    .parameter "useMinimalBillingAddress"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->GU:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GM:Z

    return-object p0
.end method
