.class public Lcn/jingling/lib/widget/paster/PasterParams;
.super Ljava/lang/Object;
.source "PasterParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xd99ccbdb28f38bdL


# instance fields
.field public direction:I

.field public position:Landroid/graphics/PointF;

.field public scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;FI)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/PointF;
    .param p2, "scale"    # F
    .param p3, "direction"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcn/jingling/lib/widget/paster/PasterParams;->scale:F

    .line 18
    iput-object p1, p0, Lcn/jingling/lib/widget/paster/PasterParams;->position:Landroid/graphics/PointF;

    .line 19
    iput p3, p0, Lcn/jingling/lib/widget/paster/PasterParams;->direction:I

    .line 20
    return-void
.end method
