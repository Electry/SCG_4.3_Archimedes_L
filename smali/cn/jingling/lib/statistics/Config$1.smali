.class Lcn/jingling/lib/statistics/Config$1;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/statistics/Config;->statisticsInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/statistics/Config$1;->val$context:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcn/jingling/lib/statistics/Controller;->getInstance()Lcn/jingling/lib/statistics/Controller;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/statistics/Config$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/statistics/Controller;->asyncAnalysisControl(Landroid/content/Context;)V

    .line 52
    return-void
.end method
