.class Lcom/google/android/gms/drive/internal/h$2;
.super Lcom/google/android/gms/drive/internal/h$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/h;->newContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rc:Lcom/google/android/gms/drive/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/h$2;->rc:Lcom/google/android/gms/drive/internal/h;

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/h$h;-><init>(Lcom/google/android/gms/drive/internal/h;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/h$2;->a(Lcom/google/android/gms/drive/internal/j;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/j;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/j;->cN()Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>()V

    new-instance v2, Lcom/google/android/gms/drive/internal/h$g;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/h$g;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/o;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/drive/internal/h$a;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/drive/internal/h$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/h$2;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
