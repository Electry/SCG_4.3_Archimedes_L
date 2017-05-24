.class public Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;
.super Ljava/lang/Object;
.source "ParseContent4Smile.java"


# static fields
.field private static instance:Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;


# instance fields
.field public mSmileStrings:[Ljava/lang/String;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public smile_id:[I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x37

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "[\u7231\u4f60]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "[\u82b1\u5fc3]"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "[\u7761\u89c9]"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "[\u5965\u7279\u66fc]"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "[\u53ef\u7231]"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "[\u601d\u8003]"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "[\u62dc\u62dc]"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "[\u53ef\u601c]"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "[\u592a\u5f00\u5fc3]"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "[\u60b2\u4f24]"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "[\u56f0]"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "[\u5077\u7b11]"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "[\u9119\u89c6]"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "[\u54ed]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "[\u5410]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "[\u95ed\u5634]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "[\u61d2\u5f97\u7406\u4f60]"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "[\u5154\u5b50]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "[\u998b\u5634]"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "[\u6cea]"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "[\u6316\u9f3b\u5c4e]"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "[\u5403\u60ca]"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "[\u7537\u5b69\u513f]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "[\u59d4\u5c48]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "[\u6253\u54c8\u6b20]"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "[\u6012\u9a82]"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "[\u718a\u732b]"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "[\u9876]"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "[\u6012]"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "[\u563b\u563b]"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "[\u6124\u6012]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "[\u5973\u5b69\u513f]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "[\u5618]"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "[\u611f\u5192]"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "[\u94b1]"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "[\u9634\u9669]"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "[\u9f13\u638c]"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "[\u4eb2\u4eb2]"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "[\u7591\u95ee]"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "[\u54c8\u54c8]"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "[\u53f3\u54fc\u54fc]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "[\u5bb3\u7f9e]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "[\u6655]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "[\u6c57]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "[\u751f\u75c5]"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "[\u6293\u72c2]"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "[\u5475\u5475]"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "[\u5931\u671b]"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "[\u732a\u5934]"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "[\u9ed1\u7ebf]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "[\u8870]"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "[\u505a\u9b3c\u8138]"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "[\u54fc]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "[\u4e66\u5446\u5b50]"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "[\u5de6\u54fc\u54fc]"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->mSmileStrings:[Ljava/lang/String;

    .line 37
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->smile_id:[I

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->map:Ljava/util/HashMap;

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->mSmileStrings:[Ljava/lang/String;

    array-length v1, v2

    .line 76
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->map:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->mSmileStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->smile_id:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void

    .line 37
    :array_0
    .array-data 4
        0x7f02050a
        0x7f02051d
        0x7f02052e
        0x7f02050b
        0x7f02051e
        0x7f02052f
        0x7f02050c
        0x7f02051f
        0x7f020530
        0x7f02050d
        0x7f020521
        0x7f020531
        0x7f02050e
        0x7f020520
        0x7f020532
        0x7f02050f
        0x7f020522
        0x7f020533
        0x7f020510
        0x7f020523
        0x7f020534
        0x7f020511
        0x7f020524
        0x7f020535
        0x7f020512
        0x7f020526
        0x7f020536
        0x7f020513
        0x7f020525
        0x7f020537
        0x7f020514
        0x7f020527
        0x7f020538
        0x7f020515
        0x7f020528
        0x7f020539
        0x7f020516
        0x7f020529
        0x7f02053a
        0x7f020517
        0x7f02053b
        0x7f020518
        0x7f02053c
        0x7f020519
        0x7f02052a
        0x7f02053d
        0x7f02051a
        0x7f02052b
        0x7f02053e
        0x7f02051b
        0x7f02052c
        0x7f02053f
        0x7f02051c
        0x7f02052d
        0x7f020540
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->instance:Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->instance:Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    .line 85
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->instance:Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSimleResourceId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public parseText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 94
    .local v2, "len":I
    const/4 v5, 0x0

    .line 95
    .local v5, "startIndex":I
    const/4 v1, 0x0

    .line 97
    .local v1, "endIndex":I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    if-ge v5, v2, :cond_1

    .line 99
    const-string v7, "["

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 101
    const-string v7, "]"

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 102
    if-eq v5, v9, :cond_1

    if-eq v1, v9, :cond_1

    .line 104
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "subSmile":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->map:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    move v5, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->getSimleResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    .local v3, "simleResourceId":Ljava/lang/Integer;
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, p2, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 112
    .local v4, "span":Landroid/text/style/ImageSpan;
    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x11

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    move v5, v1

    .line 115
    goto :goto_0

    .line 119
    .end local v3    # "simleResourceId":Ljava/lang/Integer;
    .end local v4    # "span":Landroid/text/style/ImageSpan;
    .end local v6    # "subSmile":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
