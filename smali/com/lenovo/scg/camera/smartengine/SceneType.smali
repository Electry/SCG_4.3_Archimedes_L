.class public Lcom/lenovo/scg/camera/smartengine/SceneType;
.super Ljava/lang/Object;
.source "SceneType.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/SceneType$Type;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Code;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Document;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;,
        Lcom/lenovo/scg/camera/smartengine/SceneType$Light;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IVC-SceneType"


# instance fields
.field private code:Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

.field private document:Lcom/lenovo/scg/camera/smartengine/SceneType$Document;

.field private environment:Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

.field private landscape:Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

.field private light:Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

.field private motion:Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

.field private portrait:Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/smartengine/SceneType$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->light:Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    .line 30
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->portrait:Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;

    .line 31
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->landscape:Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Document;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Document;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->document:Lcom/lenovo/scg/camera/smartengine/SceneType$Document;

    .line 33
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->environment:Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    .line 34
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->motion:Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    .line 35
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;-><init>(Lcom/lenovo/scg/camera/smartengine/SceneType;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->code:Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->light:Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->portrait:Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->landscape:Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->document:Lcom/lenovo/scg/camera/smartengine/SceneType$Document;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->environment:Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->motion:Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->code:Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/lenovo/scg/camera/smartengine/SceneType;
    .locals 3

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/SceneType;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/smartengine/SceneType;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 145
    const-string v1, "IVC-SceneType"

    const-string v2, "copy fail !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyTo(Lcom/lenovo/scg/camera/smartengine/SceneType;)V
    .locals 3
    .param p1, "sceneType"    # Lcom/lenovo/scg/camera/smartengine/SceneType;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p1, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    iput v2, v1, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->flag:I

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    const-string v1, "IVC-SceneType"

    const-string v2, "copyTo sceneType is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    return-void
.end method

.method public getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->code:Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    return-object v0
.end method

.method public getDocument()Lcom/lenovo/scg/camera/smartengine/SceneType$Document;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->document:Lcom/lenovo/scg/camera/smartengine/SceneType$Document;

    return-object v0
.end method

.method public getEnvironment()Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->environment:Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    return-object v0
.end method

.method public getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->landscape:Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    return-object v0
.end method

.method public getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->light:Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    return-object v0
.end method

.method public getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->motion:Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    return-object v0
.end method

.method public getPortrait()Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->portrait:Lcom/lenovo/scg/camera/smartengine/SceneType$Portrait;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SceneType;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;

    .line 127
    .local v1, "t":Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SceneType$Type;->reset()V

    goto :goto_0

    .line 129
    .end local v1    # "t":Lcom/lenovo/scg/camera/smartengine/SceneType$Type;
    :cond_0
    return-void
.end method
