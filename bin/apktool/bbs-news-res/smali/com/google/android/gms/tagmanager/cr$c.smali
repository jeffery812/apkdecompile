.class public Lcom/google/android/gms/tagmanager/cr$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final Sq:Ljava/lang/String;

.field private final aqu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$e;",
            ">;"
        }
    .end annotation
.end field

.field private final aqv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aqw:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$e;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqu:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqv:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cr$c;->Sq:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqw:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/tagmanager/cr$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/cr$c;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public static oV()Lcom/google/android/gms/tagmanager/cr$d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/cr$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/cr$d;-><init>(Lcom/google/android/gms/tagmanager/cr$1;)V

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$c;->Sq:Ljava/lang/String;

    return-object v0
.end method

.method public oW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqu:Ljava/util/List;

    return-object v0
.end method

.method public oX()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqv:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cr$c;->oW()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Macros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cr$c;->aqv:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
