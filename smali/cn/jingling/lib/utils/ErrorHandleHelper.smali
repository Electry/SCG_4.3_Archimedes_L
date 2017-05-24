.class public Lcn/jingling/lib/utils/ErrorHandleHelper;
.super Ljava/lang/Object;
.source "ErrorHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;
    }
.end annotation


# static fields
.field private static sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_E:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalErrorMode()Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    return-object v0
.end method

.method public static handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->RuntimeException:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_0

    .line 30
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_E:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_2

    .line 33
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_W:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_3

    .line 36
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 38
    :cond_3
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_V:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_4

    .line 39
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 41
    :cond_4
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_D:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_5

    .line 42
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 44
    :cond_5
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_I:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    if-ne v0, v1, :cond_1

    .line 45
    invoke-static {p1, p0}, Lcn/jingling/lib/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGlobalErrorMode(Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;)V
    .locals 0
    .param p0, "mode"    # Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    .prologue
    .line 12
    sput-object p0, Lcn/jingling/lib/utils/ErrorHandleHelper;->sGlobalMode:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    .line 14
    return-void
.end method
