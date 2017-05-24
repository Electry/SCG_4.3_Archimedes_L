.class public final enum Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;
.super Ljava/lang/Enum;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

.field public static final enum HEADER_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

.field public static final enum WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

.field public static final enum WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    const-string v1, "HEADER_PICTURE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->HEADER_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    const-string v1, "WEIBO_PICTURE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    const-string v1, "WEIBO_PICTURE_THUMBNAL"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->HEADER_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->$VALUES:[Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->$VALUES:[Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    return-object v0
.end method
