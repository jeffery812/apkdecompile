.class Lcom/google/android/gms/internal/ia$5;
.super Lcom/google/android/gms/internal/ia$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ia;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic El:Lcom/google/android/gms/internal/ia;

.field final synthetic En:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ia$5;->El:Lcom/google/android/gms/internal/ia;

    iput-object p3, p0, Lcom/google/android/gms/internal/ia$5;->En:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ia$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/hs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ia$5;->a(Lcom/google/android/gms/internal/hs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hs;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ia$5;->En:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V

    return-void
.end method
