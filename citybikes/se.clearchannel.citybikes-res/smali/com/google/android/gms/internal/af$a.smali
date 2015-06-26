.class public final Lcom/google/android/gms/internal/af$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private d:Ljava/util/Date;

.field private eL:I

.field private eM:Landroid/location/Location;

.field private eN:Z

.field private eP:Ljava/lang/String;

.field private eR:I

.field private final eT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final eU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final eV:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/af$a;->eT:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/af$a;->eU:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/af$a;->eV:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/internal/af$a;->eL:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/af$a;->eN:Z

    iput v1, p0, Lcom/google/android/gms/internal/af$a;->eR:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/af$a;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->d:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/af$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/af$a;->eL:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/af$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eT:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/af$a;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eM:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/af$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/af$a;->eN:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/af$a;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eU:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/af$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/af$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/af$a;->eR:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/af$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eV:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/af$a;->eM:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eU:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/af$a;->d:Ljava/util/Date;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/af$a;->eL:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/af$a;->eN:Z

    return-void
.end method

.method public e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/af$a;->eR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eT:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/af$a;->eV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/af$a;->eP:Ljava/lang/String;

    return-void
.end method
