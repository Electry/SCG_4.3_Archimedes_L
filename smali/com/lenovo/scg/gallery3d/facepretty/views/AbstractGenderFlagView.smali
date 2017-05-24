.class public abstract Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView;
.super Ljava/lang/Object;
.source "AbstractGenderFlagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/AbstractGenderFlagView$GENDER;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract getManGlagView()Landroid/view/View;
.end method

.method public abstract getOtherFlagView()Landroid/view/View;
.end method

.method public abstract getWomanFlagView()Landroid/view/View;
.end method

.method abstract initView()V
.end method
