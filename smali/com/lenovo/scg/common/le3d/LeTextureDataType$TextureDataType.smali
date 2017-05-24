.class final enum Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;
.super Ljava/lang/Enum;
.source "LeTextureDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/LeTextureDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextureDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

.field public static final enum Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

.field public static final enum Le_Common_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

.field public static final enum Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

.field public static final enum Le_RGB888_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

.field public static final enum Le_YUV420_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    const-string v1, "Le_YUV420_Type"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_YUV420_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    new-instance v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    const-string v1, "Le_Bitmap_Type"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    new-instance v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    const-string v1, "Le_RGB888_Type"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_RGB888_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    new-instance v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    const-string v1, "Le_Common_Type"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Common_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    new-instance v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    const-string v1, "Le_Line_Type"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_YUV420_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_RGB888_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Common_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->$VALUES:[Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->$VALUES:[Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    return-object v0
.end method
