.class Lcom/google/android/gms/common/api/a$a$1;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$b",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic nd:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a$1;->nd:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;TR;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
