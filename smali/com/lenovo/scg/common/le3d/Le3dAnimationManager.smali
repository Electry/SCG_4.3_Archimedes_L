.class public Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;
.super Ljava/lang/Object;
.source "Le3dAnimationManager.java"


# instance fields
.field private mAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->start()V

    .line 15
    return-void
.end method

.method public calculate()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v3

    .line 72
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 73
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 74
    .local v0, "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    invoke-static {}, Lcom/lenovo/scg/common/le3d/Le3dAnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->calculate(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/scg/common/le3d/Le3dAnimation;>;"
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 83
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 86
    .restart local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 90
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 92
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancel(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 27
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 28
    .local v0, "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->getID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->cancel()V

    .line 30
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/scg/common/le3d/Le3dAnimation;>;"
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 38
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 39
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 41
    .restart local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 45
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 47
    :cond_4
    return-void
.end method

.method public get(I)Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->getID()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 65
    :goto_1
    return-object v1

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 50
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/scg/common/le3d/Le3dAnimation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    .line 53
    .local v0, "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 57
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dAnimation;
    :cond_1
    return-void
.end method

.method public start(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->getID()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dAnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;->start()V

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method
