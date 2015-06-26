.class public Lcom/google/android/gms/fitness/data/l;
.super Lcom/google/android/gms/fitness/data/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/l$1;,
        Lcom/google/android/gms/fitness/data/l$a;
    }
.end annotation


# instance fields
.field private final SY:Lcom/google/android/gms/fitness/request/DataSourceListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataSourceListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/k$a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataSourceListener;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/l;->SY:Lcom/google/android/gms/fitness/request/DataSourceListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataSourceListener;Lcom/google/android/gms/fitness/data/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/l;-><init>(Lcom/google/android/gms/fitness/request/DataSourceListener;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1
    .parameter "dataPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/l;->SY:Lcom/google/android/gms/fitness/request/DataSourceListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/DataSourceListener;->onEvent(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method
