.class public Lcom/arcsoft/imageframeworkv20/common/ATI_Log;
.super Ljava/lang/Object;
.source "ATI_Log.java"


# static fields
.field private static mbDebugable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->mbDebugable:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->mbDebugable:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static UtilsLogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-boolean v0, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->mbDebugable:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->mbDebugable:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static setDebugable(Z)V
    .locals 0
    .param p0, "bDebugable"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->mbDebugable:Z

    .line 10
    return-void
.end method
