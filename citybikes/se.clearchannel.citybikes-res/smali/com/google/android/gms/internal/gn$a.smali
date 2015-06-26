.class final Lcom/google/android/gms/internal/gn$a;
.super Lcom/google/android/gms/internal/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/gl;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mC:I

.field private final xY:[Ljava/lang/String;

.field final synthetic xZ:Lcom/google/android/gms/internal/gn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gn;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gn$a;->xZ:Lcom/google/android/gms/internal/gn;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->aR(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gn$a;->mC:I

    iput-object p4, p0, Lcom/google/android/gms/internal/gn$a;->xY:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/gn$a;->mC:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->xY:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected aL()V
    .locals 0

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gn$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method
