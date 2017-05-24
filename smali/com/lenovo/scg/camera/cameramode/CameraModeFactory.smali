.class public Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;
.super Ljava/lang/Object;
.source "CameraModeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/cameramode/CameraModeFactory$1;
    }
.end annotation


# static fields
.field public static AUTO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static AUTO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static PRO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field public static PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-array v0, v7, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 14
    new-array v0, v6, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static createCameraMode(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeValue"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/CameraMode;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/cameramode/CameraMode;-><init>()V

    .line 55
    .local v0, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "resourceId":I
    sget-object v3, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 146
    :goto_1
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->setTitle(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->setResourceId(I)V

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    const v1, 0x7f02037e

    .line 62
    goto :goto_1

    .line 64
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    const v1, 0x7f02037d

    .line 66
    goto :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    const v1, 0x7f020380

    .line 78
    goto :goto_1

    .line 80
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    const v1, 0x7f020381

    .line 82
    goto :goto_1

    .line 96
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    goto :goto_1

    .line 100
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    const v1, 0x7f020384

    .line 102
    goto :goto_1

    .line 104
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    const v1, 0x7f02037f

    .line 106
    goto :goto_1

    .line 116
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    goto :goto_1

    .line 120
    :pswitch_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    const v1, 0x7f020383

    .line 122
    goto/16 :goto_1

    .line 132
    :pswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    const v1, 0x7f020382

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    const v1, 0x7f02037c

    .line 138
    goto/16 :goto_1

    .line 140
    :pswitch_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    const v1, 0x7f020385

    .line 142
    goto/16 :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
