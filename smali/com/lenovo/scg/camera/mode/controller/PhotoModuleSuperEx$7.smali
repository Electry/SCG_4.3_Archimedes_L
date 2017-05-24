.class synthetic Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;
.super Ljava/lang/Object;
.source "PhotoModuleSuperEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

.field static final synthetic $SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 411
    invoke-static {}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->values()[Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$controller$ModeBaseController$WindowStatus:[I

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    :goto_2
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->values()[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    :try_start_3
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$7;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 411
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
