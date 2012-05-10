/**
 * <copyright>
 * </copyright>
 *

 */
package org.graphstream.dGS.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.graphstream.dGS.Attributes;
import org.graphstream.dGS.Ce;
import org.graphstream.dGS.DGSPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Ce</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link org.graphstream.dGS.impl.CeImpl#getIdNode <em>Id Node</em>}</li>
 *   <li>{@link org.graphstream.dGS.impl.CeImpl#getAttributes <em>Attributes</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class CeImpl extends MinimalEObjectImpl.Container implements Ce
{
  /**
   * The default value of the '{@link #getIdNode() <em>Id Node</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIdNode()
   * @generated
   * @ordered
   */
  protected static final String ID_NODE_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getIdNode() <em>Id Node</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getIdNode()
   * @generated
   * @ordered
   */
  protected String idNode = ID_NODE_EDEFAULT;

  /**
   * The cached value of the '{@link #getAttributes() <em>Attributes</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getAttributes()
   * @generated
   * @ordered
   */
  protected Attributes attributes;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected CeImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return DGSPackage.Literals.CE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getIdNode()
  {
    return idNode;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setIdNode(String newIdNode)
  {
    String oldIdNode = idNode;
    idNode = newIdNode;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, DGSPackage.CE__ID_NODE, oldIdNode, idNode));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Attributes getAttributes()
  {
    return attributes;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetAttributes(Attributes newAttributes, NotificationChain msgs)
  {
    Attributes oldAttributes = attributes;
    attributes = newAttributes;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, DGSPackage.CE__ATTRIBUTES, oldAttributes, newAttributes);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setAttributes(Attributes newAttributes)
  {
    if (newAttributes != attributes)
    {
      NotificationChain msgs = null;
      if (attributes != null)
        msgs = ((InternalEObject)attributes).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - DGSPackage.CE__ATTRIBUTES, null, msgs);
      if (newAttributes != null)
        msgs = ((InternalEObject)newAttributes).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - DGSPackage.CE__ATTRIBUTES, null, msgs);
      msgs = basicSetAttributes(newAttributes, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, DGSPackage.CE__ATTRIBUTES, newAttributes, newAttributes));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case DGSPackage.CE__ATTRIBUTES:
        return basicSetAttributes(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case DGSPackage.CE__ID_NODE:
        return getIdNode();
      case DGSPackage.CE__ATTRIBUTES:
        return getAttributes();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case DGSPackage.CE__ID_NODE:
        setIdNode((String)newValue);
        return;
      case DGSPackage.CE__ATTRIBUTES:
        setAttributes((Attributes)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case DGSPackage.CE__ID_NODE:
        setIdNode(ID_NODE_EDEFAULT);
        return;
      case DGSPackage.CE__ATTRIBUTES:
        setAttributes((Attributes)null);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case DGSPackage.CE__ID_NODE:
        return ID_NODE_EDEFAULT == null ? idNode != null : !ID_NODE_EDEFAULT.equals(idNode);
      case DGSPackage.CE__ATTRIBUTES:
        return attributes != null;
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (idNode: ");
    result.append(idNode);
    result.append(')');
    return result.toString();
  }

} //CeImpl