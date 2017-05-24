.class public Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;
.super Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;
.source "SmartPluginPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$MyTimerTask;,
        Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;
    }
.end annotation


# static fields
.field private static final MIN_FACE_POSITION:I = 0x258

.field private static final MIN_FACE_SIZE:I = 0x37cd

.field private static final TAG:Ljava/lang/String; = "[smart_app]SmartPluginPreview"


# instance fields
.field private mFaceCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

.field private mOrientation:I

.field private mTimer:Ljava/util/Timer;

.field private m_bRuning:Z

.field private m_nFaceCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginBase;-><init>()V

    .line 20
    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_nFaceCount:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mFaceCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

    .line 34
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    .line 172
    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mOrientation:I

    .line 17
    const-string v0, "[smart_app]SmartPluginPreview"

    const-string v1, "SmartPluginPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method private getValidFaces([Landroid/hardware/Camera$Face;)I
    .locals 12
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "nMax":I
    const/4 v7, 0x0

    .line 102
    .local v7, "nMin":I
    const/4 v8, 0x0

    .line 103
    .local v8, "nNow":I
    const/4 v2, 0x0

    .line 104
    .local v2, "bIsValid":Z
    array-length v9, p1

    const/4 v10, 0x2

    if-le v9, v10, :cond_3

    const/4 v1, 0x1

    .line 106
    .local v1, "bGroup":Z
    :goto_0
    const-string v9, "[smart_app]SmartPluginPreview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getValidFaces length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object v0, p1

    .local v0, "arr$":[Landroid/hardware/Camera$Face;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_a

    aget-object v3, v0, v4

    .line 109
    .local v3, "i":Landroid/hardware/Camera$Face;
    iget-object v9, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int v8, v9, v10

    .line 111
    const-string v9, "[smart_app]SmartPluginPreview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getValidFaces id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz v1, :cond_1

    .line 117
    if-le v8, v6, :cond_0

    .line 119
    move v6, v8

    .line 122
    :cond_0
    if-ge v7, v8, :cond_1

    .line 124
    move v7, v8

    .line 128
    :cond_1
    const/16 v9, 0x37cd

    if-le v9, v8, :cond_4

    .line 130
    const-string v9, "[smart_app]SmartPluginPreview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getValidFaces size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " too small"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 104
    .end local v0    # "arr$":[Landroid/hardware/Camera$Face;
    .end local v1    # "bGroup":Z
    .end local v3    # "i":Landroid/hardware/Camera$Face;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 134
    .restart local v0    # "arr$":[Landroid/hardware/Camera$Face;
    .restart local v1    # "bGroup":Z
    .restart local v3    # "i":Landroid/hardware/Camera$Face;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_4
    iget-object v9, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    const/16 v10, -0x258

    if-lt v9, v10, :cond_5

    iget-object v9, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    const/16 v10, 0x258

    if-le v9, v10, :cond_6

    .line 136
    :cond_5
    const-string v9, "[smart_app]SmartPluginPreview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getValidFaces centerY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 140
    :cond_6
    iget v9, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mOrientation:I

    if-eqz v9, :cond_7

    iget-object v9, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    const/16 v10, -0x258

    if-lt v9, v10, :cond_8

    :cond_7
    iget-object v9, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    const/16 v10, 0x258

    if-le v9, v10, :cond_9

    .line 142
    :cond_8
    const-string v9, "[smart_app]SmartPluginPreview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getValidFaces mOrientation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mOrientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",centerX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 146
    :cond_9
    const/4 v2, 0x1

    .line 147
    if-nez v1, :cond_2

    .line 153
    .end local v3    # "i":Landroid/hardware/Camera$Face;
    :cond_a
    if-nez v2, :cond_b

    .line 155
    const-string v9, "[smart_app]SmartPluginPreview"

    const-string v10, "getValidFaces ret = none"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v9, 0x0

    .line 169
    :goto_3
    return v9

    .line 159
    :cond_b
    if-eqz v1, :cond_c

    .line 161
    div-int v9, v6, v7

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c

    .line 163
    const-string v9, "[smart_app]SmartPluginPreview"

    const-string v10, "getValidFaces ret = group"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v9, 0x3

    goto :goto_3

    .line 168
    :cond_c
    const-string v9, "[smart_app]SmartPluginPreview"

    const-string v10, "getValidFaces ret = portait"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v9, 0x1

    goto :goto_3
.end method


# virtual methods
.method public SetFaceCallback(Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;)V
    .locals 3
    .param p1, "p"    # Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

    .prologue
    .line 30
    const-string v0, "[smart_app]SmartPluginPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceCallback mFaceCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mFaceCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

    .line 32
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mFaceCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "[smart_app]SmartPluginPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceDetection faces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->getValidFaces([Landroid/hardware/Camera$Face;)I

    move-result v0

    .line 72
    .local v0, "n":I
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_nFaceCount:I

    if-eq v0, v1, :cond_0

    .line 74
    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_nFaceCount:I

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mFaceCallback:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$FaceCallback;->onFaceDetection(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "[smart_app]SmartPluginPreview"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mOrientation:I

    .line 175
    const-string v0, "[smart_app]SmartPluginPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "[smart_app]SmartPluginPreview"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_nFaceCount:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->m_bRuning:Z

    goto :goto_0
.end method
