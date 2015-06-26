.class Lcom/google/android/gms/internal/lb$c;
.super Lcom/google/android/gms/internal/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final De:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final TM:Lcom/google/android/gms/fitness/request/DataSourceListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/fitness/request/DataSourceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/fitness/request/DataSourceListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ks$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lb$c;->De:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/lb$c;->TM:Lcom/google/android/gms/fitness/request/DataSourceListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/fitness/request/DataSourceListener;Lcom/google/android/gms/internal/lb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/lb$c;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/fitness/request/DataSourceListener;)V

    return-void
.end method


# virtual methods
.method public k(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lb$c;->TM:Lcom/google/android/gms/fitness/request/DataSourceListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/fitness/data/l$a;->iO()Lcom/google/android/gms/fitness/data/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lb$c;->TM:Lcom/google/android/gms/fitness/request/DataSourceListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/l$a;->c(Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/fitness/data/l;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lb$c;->De:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method
