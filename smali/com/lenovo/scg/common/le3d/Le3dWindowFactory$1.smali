.class synthetic Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;
.super Ljava/lang/Object;
.source "Le3dWindowFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dWindowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->values()[Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_GOLDBOX_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_AUTO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_SHOW_PRO_MODE_VIEW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$1;->$SwitchMap$com$lenovo$scg$common$le3d$Le3dWindowFactory$Type:[I

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;->LE3D_TUTORIAL_WINDOW:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
