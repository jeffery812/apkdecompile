.class public Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;


# instance fields
.field private DT:[Ljava/lang/String;

.field private DU:Ljava/lang/String;

.field private DV:Ljava/lang/String;

.field private DW:Ljava/lang/String;

.field private DY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private DZ:[Ljava/lang/String;

.field private jG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->DV:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->DU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public aA(Ljava/lang/String;)Lcom/google/android/gms/internal/hv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hv;->jG:Ljava/lang/String;

    return-object p0
.end method

.method public varargs d([Ljava/lang/String;)Lcom/google/android/gms/internal/hv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs e([Ljava/lang/String;)Lcom/google/android/gms/internal/hv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hv;->DZ:[Ljava/lang/String;

    return-object p0
.end method

.method public eY()Lcom/google/android/gms/internal/hv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public eZ()Lcom/google/android/gms/internal/hu;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->jG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/internal/hv;->jG:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/hv;->DY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/hu;

    iget-object v1, p0, Lcom/google/android/gms/internal/hv;->jG:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hv;->DZ:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/hv;->DT:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/hv;->DU:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/hv;->DV:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/hv;->DW:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/hu;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
