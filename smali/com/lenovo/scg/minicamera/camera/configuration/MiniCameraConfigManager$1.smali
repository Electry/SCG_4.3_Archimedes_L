.class Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;
.super Ljava/lang/Object;
.source "MiniCameraConfigManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4
    .param p1, "a"    # Landroid/hardware/Camera$Size;
    .param p2, "b"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 182
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int v0, v2, v3

    .line 183
    .local v0, "aPixels":I
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int v1, v2, v3

    .line 184
    .local v1, "bPixels":I
    if-ge v1, v0, :cond_0

    .line 185
    const/4 v2, -0x1

    .line 190
    :goto_0
    return v2

    .line 187
    :cond_0
    if-le v1, v0, :cond_1

    .line 188
    const/4 v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
