.class Lcom/google/android/gms/internal/hz$2;
.super Lcom/google/android/gms/internal/hz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hz;->load(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ec:Lcom/google/android/gms/internal/hz;

.field final synthetic Ed:Ljava/lang/String;

.field final synthetic Ee:Landroid/net/Uri;

.field final synthetic Ef:Ljava/lang/String;

.field final synthetic Eg:Ljava/lang/String;

.field final synthetic vc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hz$2;->Ec:Lcom/google/android/gms/internal/hz;

    iput p3, p0, Lcom/google/android/gms/internal/hz$2;->vc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/hz$2;->Ed:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/hz$2;->Ee:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/hz$2;->Ef:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/hz$2;->Eg:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hz$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/hs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hz$2;->a(Lcom/google/android/gms/internal/hs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hs;)V
    .locals 7

    iget v2, p0, Lcom/google/android/gms/internal/hz$2;->vc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/hz$2;->Ed:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/hz$2;->Ee:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/hz$2;->Ef:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/hz$2;->Eg:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
