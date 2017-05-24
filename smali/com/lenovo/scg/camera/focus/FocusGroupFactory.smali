.class public Lcom/lenovo/scg/camera/focus/FocusGroupFactory;
.super Ljava/lang/Object;
.source "FocusGroupFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;,
        Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;,
        Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;,
        Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusGroupFactory"

.field private static mFocusGroup2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/camera/focus/FocusGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mFocusGroup2PreviewMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;",
            ">;"
        }
    .end annotation
.end field

.field private static mFocusGroup2ShutterMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;",
            ">;"
        }
    .end annotation
.end field

.field private static mFocusGroup2TouchMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;",
            "Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2Class:Ljava/util/HashMap;

    .line 86
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$2;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2PreviewMode:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$3;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2ShutterMode:Ljava/util/HashMap;

    .line 120
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$4;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2TouchMode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static create(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;)Lcom/lenovo/scg/camera/focus/FocusGroup;
    .locals 7
    .param p0, "fGroup"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .prologue
    .line 143
    const-string v4, "FocusGroupFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create : fGroup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "group":Lcom/lenovo/scg/camera/focus/FocusGroup;
    sget-object v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2Class:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 147
    .local v3, "kClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/camera/focus/FocusGroup;>;"
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusGroup;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    if-eqz v2, :cond_0

    .line 153
    sget-object v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2PreviewMode:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setPreviewMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;)V

    .line 154
    sget-object v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2ShutterMode:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setShutterMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;)V

    .line 155
    sget-object v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory;->mFocusGroup2TouchMode:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setTouchMode(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;)V

    .line 157
    :cond_0
    const-string v4, "FocusGroupFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create : group = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FocusGroupFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creat Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
