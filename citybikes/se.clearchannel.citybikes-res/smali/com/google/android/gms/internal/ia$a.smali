.class abstract Lcom/google/android/gms/internal/ia$a;
.super Lcom/google/android/gms/plus/Plus$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/plus/Plus$a",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/hs;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method public L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ia$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ia$a$1;-><init>(Lcom/google/android/gms/internal/ia$a;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ia$a;->L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;

    move-result-object v0

    return-object v0
.end method
