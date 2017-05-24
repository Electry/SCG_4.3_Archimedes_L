.class public final enum Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;
.super Ljava/lang/Enum;
.source "LeCSColorFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_ABGR8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_ARGB8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_GRAY:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_JpegStream:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_NONE:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_RGB565:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_RGB888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_UnKnown:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YUV420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YUV420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YUV422p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YUV422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YUYV422:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YVU420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

.field public static final enum LE_CLR_FMT_YVU422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_ARGB8888"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_ARGB8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 11
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_ABGR8888"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_ABGR8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 14
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_RGBA8888"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 17
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_RGB888"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGB888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 20
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_RGB565"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGB565:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 23
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_GRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_GRAY:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 26
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_NONE:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 29
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_UnKnown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_UnKnown:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 33
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_JpegStream"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_JpegStream:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 36
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YUV420p"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 39
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YVU420p"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 42
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YUV420sp"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 45
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YVU420sp"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 48
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YUYV422"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUYV422:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 51
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YUV422p"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV422p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 53
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YUV422sp"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 55
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    const-string v1, "LE_CLR_FMT_YVU422sp"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    .line 5
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_ARGB8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_ABGR8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGB888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGB565:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_GRAY:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_NONE:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_UnKnown:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_JpegStream:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUYV422:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV422p:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YUV422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU422sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->$VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->$VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    return-object v0
.end method
