.class final Lcom/google/android/gms/internal/ly$a;
.super Lcom/google/android/gms/common/internal/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/d",
        "<",
        "Lcom/google/android/gms/internal/lw;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final HF:I

.field private final aeQ:[Ljava/lang/String;

.field final synthetic aeR:Lcom/google/android/gms/internal/ly;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ly;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ly$a;->aeR:Lcom/google/android/gms/internal/ly;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/d$b;-><init>(Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->ee(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ly$a;->HF:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ly$a;->aeQ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ly$a;->HF:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ly$a;->aeQ:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ly$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method

.method protected gT()V
    .locals 0

    return-void
.end method
