.class public final enum Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;
.super Ljava/lang/Enum;
.source "PictureSizeTypeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

.field public static final enum Size16x9:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

.field public static final enum Size4x3:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    const-string v1, "Size16x9"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->Size16x9:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    .line 50
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    const-string v1, "Size4x3"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->Size4x3:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->Size16x9:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->Size4x3:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;

    return-object v0
.end method
