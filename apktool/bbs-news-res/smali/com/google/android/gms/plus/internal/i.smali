.class public Lcom/google/android/gms/plus/internal/i;
.super Ljava/lang/Object;


# instance fields
.field private Dd:Ljava/lang/String;

.field private final alA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alB:[Ljava/lang/String;

.field private alu:[Ljava/lang/String;

.field private alv:Ljava/lang/String;

.field private alw:Ljava/lang/String;

.field private alx:Ljava/lang/String;

.field private alz:Lcom/google/android/gms/plus/internal/PlusCommonExtras;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alv:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alz:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public ce(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/i;->Dd:Ljava/lang/String;

    return-object p0
.end method

.method public varargs g([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs h([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/i;->alB:[Ljava/lang/String;

    return-object p0
.end method

.method public nn()Lcom/google/android/gms/plus/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public no()Lcom/google/android/gms/plus/internal/h;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->Dd:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->Dd:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/i;->alA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/i;->Dd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/i;->alB:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/plus/internal/i;->alu:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/plus/internal/i;->alv:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/plus/internal/i;->alw:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/plus/internal/i;->alx:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/plus/internal/i;->alz:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    return-object v0
.end method
