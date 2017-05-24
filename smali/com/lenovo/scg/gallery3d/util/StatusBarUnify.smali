.class public Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;
.super Ljava/lang/Object;
.source "StatusBarUnify.java"


# instance fields
.field private mCurActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->mCurActivity:Landroid/app/Activity;

    return-void
.end method

.method private reFlectWindowParams(Ljava/lang/String;)I
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "winParamField":Ljava/lang/reflect/Field;
    if-nez p1, :cond_1

    .line 62
    const/4 v2, 0x0

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    :try_start_0
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    :goto_1
    const/4 v2, 0x0

    .line 71
    .local v2, "flags":I
    if-eqz v3, :cond_0

    .line 73
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    goto :goto_0

    .line 66
    .end local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e1":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v1    # "e1":Ljava/lang/NoSuchFieldException;
    .restart local v2    # "flags":I
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setStatusBarUnify(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->mCurActivity:Landroid/app/Activity;

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "build_ver_code_type":I
    :try_start_0
    const-class v5, Landroid/os/Build$VERSION_CODES;

    const-string v6, "KITKAT"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 30
    .local v0, "buildField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 32
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 33
    const-string v5, "hwj"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build_ver_code_type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .end local v0    # "buildField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_1

    .line 45
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->mCurActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 46
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->mCurActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 47
    .local v4, "window":Landroid/view/Window;
    const-string v5, "FLAG_TRANSLUCENT_STATUS"

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->reFlectWindowParams(Ljava/lang/String;)I

    move-result v3

    .line 48
    .local v3, "flag":I
    invoke-virtual {v4, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 49
    const-string v5, "FLAG_TRANSLUCENT_NAVIGATION"

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->reFlectWindowParams(Ljava/lang/String;)I

    move-result v3

    .line 50
    invoke-virtual {v4, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-virtual {v4}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    .line 56
    .end local v3    # "flag":I
    .end local v4    # "window":Landroid/view/Window;
    :cond_1
    return-void

    .line 34
    .restart local v0    # "buildField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 40
    .end local v0    # "buildField":Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "buildField":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
