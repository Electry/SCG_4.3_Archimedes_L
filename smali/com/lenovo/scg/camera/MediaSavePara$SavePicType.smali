.class public final enum Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
.super Ljava/lang/Enum;
.source "MediaSavePara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/MediaSavePara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SavePicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

.field public static final enum JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

.field public static final enum RGBA:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

.field public static final enum YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    const-string v1, "RGBA"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->RGBA:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    const-string v1, "YUV"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    sget-object v1, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->RGBA:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->$VALUES:[Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->$VALUES:[Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    return-object v0
.end method
