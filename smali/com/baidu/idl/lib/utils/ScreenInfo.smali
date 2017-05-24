.class public Lcom/baidu/idl/lib/utils/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# static fields
.field public static mScreenHeight:I

.field public static mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenHeight:I

    return v0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    sget v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenHeight:I

    if-gtz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 47
    sput v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenHeight:I

    .line 50
    :cond_0
    sget v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenWidth:I

    return v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-static {}, Lcom/baidu/idl/lib/utils/ScreenInfo;->getScreenWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 37
    sput v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenWidth:I

    .line 40
    :cond_0
    invoke-static {}, Lcom/baidu/idl/lib/utils/ScreenInfo;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static setScreenInfo(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 20
    sput v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenWidth:I

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 22
    sput v0, Lcom/baidu/idl/lib/utils/ScreenInfo;->mScreenHeight:I

    .line 24
    return-void
.end method
