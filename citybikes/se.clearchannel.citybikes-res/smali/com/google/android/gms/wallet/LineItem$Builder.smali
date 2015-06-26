.class public final Lcom/google/android/gms/wallet/LineItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/LineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic Gz:Lcom/google/android/gms/wallet/LineItem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/LineItem;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/LineItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "currencyCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Gk:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "description"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "quantity"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Gw:Ljava/lang/String;

    return-object p0
.end method

.method public setRole(I)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "role"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput p1, v0, Lcom/google/android/gms/wallet/LineItem;->Gy:I

    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "totalPrice"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Gj:Ljava/lang/String;

    return-object p0
.end method

.method public setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1
    .parameter "unitPrice"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->Gz:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Gx:Ljava/lang/String;

    return-object p0
.end method
