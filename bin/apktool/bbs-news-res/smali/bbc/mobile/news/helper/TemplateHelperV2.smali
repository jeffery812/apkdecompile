.class public final Lbbc/mobile/news/helper/TemplateHelperV2;
.super Ljava/lang/Object;
.source "TemplateHelperV2.java"


# static fields
.field private static final END_MARKER:Ljava/lang/String; = "}}"

.field public static final MARKER_CATEGORYBAR_H:Ljava/lang/String; = "{{categorybar-height}}"

.field public static final MARKER_CONTENT:Ljava/lang/String; = "{{content}}"

.field public static final MARKER_DATE:Ljava/lang/String; = "{{date}}"

.field public static final MARKER_FONT_CLASS:Ljava/lang/String; = "{{font-class}}"

.field public static final MARKER_FONT_SIZE:Ljava/lang/String; = "{{font-size}}"

.field public static final MARKER_FOOTER:Ljava/lang/String; = "{{footer}}"

.field public static final MARKER_ORIENTATION:Ljava/lang/String; = "{{orientation}}"

.field public static final MARKER_PADDING_LEFT:Ljava/lang/String; = "{{padding-left}}"

.field public static final MARKER_PADDING_RIGHT:Ljava/lang/String; = "{{padding-right}}"

.field public static final MARKER_TITLE:Ljava/lang/String; = "{{title}}"

.field public static final MARKER_USER_AGENT:Ljava/lang/String; = "{{user-agent}}"

.field private static final START_MARKER:Ljava/lang/String; = "{{"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lbbc/mobile/news/helper/TemplateHelperV2;


# instance fields
.field private final mHtml:Ljava/lang/String;

.field private final mHtmlLength:I

.field private final mTemplateParts:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbbc/mobile/news/helper/TemplateHelperV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/TemplateHelperV2;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, resources:Landroid/content/res/Resources;
    sget v4, Lbbc/mobile/news/R$raw;->article_html:I

    invoke-direct {p0, v2, v4}, Lbbc/mobile/news/helper/TemplateHelperV2;->readResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtmlLength:I

    .line 55
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mTemplateParts:Landroid/util/SparseIntArray;

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, last:I
    :goto_0
    iget v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtmlLength:I

    if-lt v1, v4, :cond_1

    .line 74
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    const-string v5, "{{"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 59
    .local v3, start:I
    if-le v3, v6, :cond_0

    .line 60
    iget-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    const-string v5, "}}"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, end:I
    if-le v0, v6, :cond_2

    .line 62
    const-string v4, "}}"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 63
    iget-object v4, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mTemplateParts:Landroid/util/SparseIntArray;

    sub-int v5, v0, v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 64
    move v1, v0

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    const-string v4, "{{"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_0
.end method

.method public static fixActiveContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"
    .parameter "fontClass"
    .parameter "orientation"

    .prologue
    .line 104
    .line 105
    const-string v0, "{{font-class}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "{{orientation}}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TemplateHelperV2;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const-class v1, Lbbc/mobile/news/helper/TemplateHelperV2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbbc/mobile/news/helper/TemplateHelperV2;->sInstance:Lbbc/mobile/news/helper/TemplateHelperV2;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lbbc/mobile/news/helper/TemplateHelperV2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/helper/TemplateHelperV2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbbc/mobile/news/helper/TemplateHelperV2;->sInstance:Lbbc/mobile/news/helper/TemplateHelperV2;

    .line 47
    :cond_0
    sget-object v0, Lbbc/mobile/news/helper/TemplateHelperV2;->sInstance:Lbbc/mobile/news/helper/TemplateHelperV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 9
    .parameter "resources"
    .parameter "rawResId"

    .prologue
    .line 111
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v5, sr:Ljava/io/StringWriter;
    const/4 v2, 0x0

    .line 115
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 117
    .local v3, isr:Ljava/io/InputStreamReader;
    const/16 v6, 0x1000

    new-array v0, v6, [C

    .line 119
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, read:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 127
    if-eqz v2, :cond_0

    .line 128
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 132
    .end local v0           #buffer:[C
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v4           #read:I
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 120
    .restart local v0       #buffer:[C
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #read:I
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 123
    .end local v0           #buffer:[C
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v4           #read:I
    :catch_0
    move-exception v1

    .line 124
    .local v1, ioException:Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lbbc/mobile/news/helper/TemplateHelperV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to read raw resource "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v2, :cond_0

    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    .line 126
    .end local v1           #ioException:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 127
    if-eqz v2, :cond_2

    .line 128
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 130
    :cond_2
    :goto_2
    throw v6

    .line 128
    :catch_2
    move-exception v7

    goto :goto_2

    .restart local v0       #buffer:[C
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #read:I
    :catch_3
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public buildArticleContent(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 79
    .local v0, capacity:I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 84
    .local v4, last:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mTemplateParts:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-lt v2, v8, :cond_2

    .line 96
    iget v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtmlLength:I

    if-ge v4, v8, :cond_0

    .line 97
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 79
    .end local v2           #index:I
    .end local v4           #last:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_0

    .line 85
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #index:I
    .restart local v4       #last:I
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mTemplateParts:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 86
    .local v3, key:I
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mTemplateParts:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 87
    .local v5, len:I
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int v4, v3, v5

    .line 89
    iget-object v8, p0, Lbbc/mobile/news/helper/TemplateHelperV2;->mHtml:Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, marker:Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
